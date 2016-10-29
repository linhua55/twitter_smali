package com.google.android.exoplayer.text.webvtt;

import com.google.android.exoplayer.ParserException;
import com.google.android.exoplayer.util.ParsableByteArray;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public final class WebvttParserUtil {
    private static final Pattern HEADER;

    static {
        HEADER = Pattern.compile("^\ufeff?WEBVTT(( |\t).*)?$");
    }

    private WebvttParserUtil() {
    }

    public static void validateWebvttHeaderLine(ParsableByteArray parsableByteArray) throws ParserException {
        Object readLine = parsableByteArray.readLine();
        if (readLine == null || !HEADER.matcher(readLine).matches()) {
            throw new ParserException("Expected WEBVTT. Got " + readLine);
        }
    }

    public static long parseTimestampUs(String str) throws NumberFormatException {
        int i = 0;
        long j = 0;
        String[] split = str.split("\\.", 2);
        String[] split2 = split[0].split(":");
        while (i < split2.length) {
            j = (j * 60) + Long.parseLong(split2[i]);
            i++;
        }
        return (Long.parseLong(split[1]) + (j * 1000)) * 1000;
    }

    public static float parsePercentage(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }
}
