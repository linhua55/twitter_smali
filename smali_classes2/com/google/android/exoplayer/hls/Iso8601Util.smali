.class public Lcom/google/android/exoplayer/hls/Iso8601Util;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final ISO_8601_DATETIME_PARSERS:[Ljava/text/DateFormat;

.field private static final ISO_8601_DATETIME_PARSER_MS:Ljava/text/DateFormat;

.field private static final ISO_8601_DATETIME_PARSER_NO_MS:Ljava/text/DateFormat;

.field private static final ISO_8601_DATETIME_PARSER_NO_ZONE:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_MS:Ljava/text/DateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_NO_MS:Ljava/text/DateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_NO_ZONE:Ljava/text/DateFormat;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/DateFormat;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_MS:Ljava/text/DateFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_NO_MS:Ljava/text/DateFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_NO_ZONE:Ljava/text/DateFormat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSERS:[Ljava/text/DateFormat;

    .line 25
    sget-object v0, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSER_NO_ZONE:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    .prologue
    .line 29
    sget-object v1, Lcom/google/android/exoplayer/hls/Iso8601Util;->ISO_8601_DATETIME_PARSERS:[Ljava/text/DateFormat;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 31
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :catch_0
    move-exception v3

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method
