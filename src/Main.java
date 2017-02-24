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

    public static final String path = "C:\\Users\\qtfreet\\Desktop\\TIM_1.0.3\\classes\\com\\qtfreet";

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

}

