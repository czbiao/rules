package com.hstc.rules.utils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static java.awt.image.BufferedImage.TYPE_INT_RGB;

/**
 * Created by linjingshan on 2018/05/05 18:54.
 *
 * @version : 1.0
 */
public class CertUtil {

    /**
     * 原始证书路径
     */
    private static String CERT_ORIGIN_PATH;

    /**
     * 原始图片名称
     */
    private static String CERT_ORIGIN_NAME = "zhengshu.png";

    /**
     * 证书默认保存的temp路径
     */
    private static String CERT_SAVE_TEMP;

    /**
     * 原始证书图片的BufferImage对象
     */
    private static BufferedImage originBuffer = null;

    public static File drawCert(String college, String name, String studentId) {
        String separator = System.getProperty("file.separator");
        BufferedImage resultImg = null;
        try {
            // 不必每次都读取原始图片
            if (originBuffer == null) {
                originBuffer = ImageIO.read(new FileInputStream(CERT_ORIGIN_PATH + separator + CERT_ORIGIN_NAME));
            }

            resultImg = new BufferedImage(originBuffer.getWidth(), originBuffer.getHeight(), TYPE_INT_RGB);
            Graphics2D g = (Graphics2D) resultImg.getGraphics();
            Map mapH = new HashMap();
            mapH.put(RenderingHints.KEY_ANTIALIASING,  RenderingHints.VALUE_ANTIALIAS_ON);  //抗锯齿 （抗锯齿总开关）
            mapH.put(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
            g.addRenderingHints(mapH);

            g.drawImage(originBuffer, 0, 0, null);

            g.setFont(new Font("黑体", Font.PLAIN, 25));
            g.setColor(Color.BLACK);
            g.drawString(name, 490, 280);

            g.drawString(studentId, 720, 250);

            g.drawString(college, 160, 280);

            File tempFile = IOUtil.getFile(CERT_SAVE_TEMP, "cert_" + studentId + ".png");
            ImageIO.write(resultImg, "png", tempFile);
            return tempFile;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static String getCertOriginPath() {
        return CERT_ORIGIN_PATH;
    }

    public static void setCertOriginPath(String certOriginPath) {
        CERT_ORIGIN_PATH = certOriginPath;
    }

    public static String getCertSaveTemp() {
        return CERT_SAVE_TEMP;
    }

    public static void setCertSaveTemp(String certSaveTemp) {
        CERT_SAVE_TEMP = certSaveTemp;
    }
}
