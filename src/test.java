import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by qtfreet on 2017/2/24.
 */
public class test {
    public static void main(String[] args) {


        String s = "\",\"type\":1,\"offset\":";
        System.out.println(qtfreet00.decode(qtfreet00.encode(s)));;
        String s1 = StringEscapeUtils.unescapeJava(s);
        System.out.println(qtfreet00.decode(qtfreet00.encode(s1)));


    }


}
