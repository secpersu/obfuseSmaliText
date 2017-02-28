import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by qtfreet on 2017/2/24.
 */
public class Main {

    private static List<String> filelist = new ArrayList();

    public static final String path = "C:\\Users\\qtfreet\\Desktop\\musicuu_2017\\musicuu_2017\\classes\\com\\qtfreet";

    public static void main(String[] args) throws UnsupportedEncodingException {
        getFiles(path);
        if (filelist == null) {
            System.out.println("未发现smali文件");
            return;
        }
        int size = filelist.size();
        for (int i = 0; i < size; i++) {
            String signalFile = filelist.get(i);
            if (!signalFile.endsWith(".smali")) {
                continue;
            }
            int j = i + 1;
            int k = size - i;
            System.out.println("当前是第 " + j + "个文件，还剩" + k + "个");
            FileTofindString(signalFile);
        }
        System.out.println("任务完成");
    }

    private static void FileTofindString(String path) {
        StringBuilder sb = new StringBuilder();
        try {
            InputStreamReader read = new InputStreamReader(new FileInputStream(path), "UTF-8");
            BufferedReader br = new BufferedReader(read);
            String str = "";
            while ((str = br.readLine()) != null) {
                Matcher m = Pattern.compile("const-string ([vp]\\d{1,2}), \"(.*)\"").matcher(str);
                if (m.find()) {
                    String tmp = m.group(2);
                    if (tmp.equals("")) {
                        sb.append(str + "\n");
                        continue;
                    }
                    if (isZh(tmp)) {
                        tmp = decodeUnicode(tmp);
                    }
                    String register = m.group(1);
                    String enc = qtfreet00.encString(tmp);
                    String sign = "    const-string " + register + ", " + "\"" + enc + "\"";
                    String dec = "";
                    if (Integer.parseInt(register.substring(1)) > 15 && register.startsWith("v")) {
                        dec = "    invoke-static/range {" + register + " .. " + register + "}, Lcom/qtfreet00;->decString(Ljava/lang/String;)Ljava/lang/String;";
                    } else if (register.startsWith("v") || (register.startsWith("p") && Integer.parseInt(register.substring(1)) < 10)) {
                        dec = "    invoke-static {" + register + "}, Lcom/qtfreet00;->decString(Ljava/lang/String;)Ljava/lang/String;";
                    } else {
                        sb.append(str + "\n");
                        continue;
                    }
                    String mov = "    move-result-object " + register;
                    sb.append(sign + "\n\n");
                    sb.append(dec + "\n\n");
                    sb.append(mov + "\n");
                } else {
                    sb.append(str + "\n");
                }
            }
            br.close();
            read.close();
            FileOutputStream fos = new FileOutputStream(new File(path));
            fos.write(sb.toString().getBytes("UTF-8"));
            fos.flush();
            fos.close();

        } catch (Exception e) {
        }
    }

    private static void getFiles(String filePath) {
        File[] files = new File(filePath).listFiles();
        if (files == null) {
            return;
        }
        for (File file : files) {
            if (file.isDirectory()) {
                getFiles(file.getPath());
            } else {
                filelist.add(file.getPath());
            }
        }
    }

    public static String decodeUnicode(final String ori) {
        char aChar;
        int len = ori.length();
        StringBuffer outBuffer = new StringBuffer(len);
        for (int x = 0; x < len; ) {
            aChar = ori.charAt(x++);
            if (aChar == '\\') {
                aChar = ori.charAt(x++);
                if (aChar == 'u') {
                    // Read the xxxx
                    int value = 0;
                    for (int i = 0; i < 4; i++) {
                        aChar = ori.charAt(x++);
                        switch (aChar) {
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                value = (value << 4) + aChar - '0';
                                break;
                            case 'a':
                            case 'b':
                            case 'c':
                            case 'd':
                            case 'e':
                            case 'f':
                                value = (value << 4) + 10 + aChar - 'a';
                                break;
                            case 'A':
                            case 'B':
                            case 'C':
                            case 'D':
                            case 'E':
                            case 'F':
                                value = (value << 4) + 10 + aChar - 'A';
                                break;
                            default:
                                throw new IllegalArgumentException(
                                        "Malformed   \\uxxxx   encoding.");
                        }
                    }
                    outBuffer.append((char) value);
                } else {
                    if (aChar == 't')
                        aChar = '\t';
                    else if (aChar == 'r')
                        aChar = '\r';
                    else if (aChar == 'n')
                        aChar = '\n';
                    else if (aChar == 'f')
                        aChar = '\f';
                    outBuffer.append(aChar);
                }
            } else
                outBuffer.append(aChar);

        }
        return outBuffer.toString();
    }

    public static boolean isZh(CharSequence input) {
        return Pattern.compile("(\\\\u.{4})").matcher(input).find();
    }


}

