.class public final Ltv/periscope/android/util/e;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:Ljava/io/File;

.field private static final c:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "video/mp4"

    aput-object v2, v0, v1

    sput-object v0, Ltv/periscope/android/util/e;->a:[Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Ltv/periscope/android/util/e;->b:Ljava/io/File;

    .line 22
    new-instance v0, Ljava/io/File;

    sget-object v1, Ltv/periscope/android/util/e;->b:Ljava/io/File;

    const-string/jumbo v2, "Periscope"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ltv/periscope/android/util/e;->c:Ljava/io/File;

    return-void
.end method

.method public static a(Ltv/periscope/model/ac;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Ltv/periscope/model/ac;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Ltv/periscope/model/ac;->i()[I

    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lez v1, :cond_1

    .line 63
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string/jumbo v2, "rtmps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "PSPS:"

    .line 70
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_1
    return-object v0

    .line 68
    :cond_0
    const-string/jumbo v0, "PSP:"
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
