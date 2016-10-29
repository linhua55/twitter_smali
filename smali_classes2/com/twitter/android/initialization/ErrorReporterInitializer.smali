.class public Lcom/twitter/android/initialization/ErrorReporterInitializer;
.super Lauo;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauo",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lauo;-><init>()V

    .line 46
    iput-boolean p1, p0, Lcom/twitter/android/initialization/ErrorReporterInitializer;->a:Z

    .line 47
    iput-boolean p2, p0, Lcom/twitter/android/initialization/ErrorReporterInitializer;->b:Z

    .line 48
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/twitter/android/initialization/ErrorReporterInitializer;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lczg;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Git SHA: ba3b4f5d1f5a3dca884774f8601ae7162cedbee2 Display:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Fingerprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Brand:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Product:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/ErrorReporterInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/twitter/fabric/CrashlyticsErrorLogger;

    iget-boolean v1, p0, Lcom/twitter/android/initialization/ErrorReporterInitializer;->a:Z

    invoke-direct {v0, p1, v1}, Lcom/twitter/fabric/CrashlyticsErrorLogger;-><init>(Landroid/content/Context;Z)V

    .line 55
    iget-boolean v1, p0, Lcom/twitter/android/initialization/ErrorReporterInitializer;->a:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/twitter/android/initialization/d;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/initialization/d;-><init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;Lcom/twitter/fabric/CrashlyticsErrorLogger;)V

    invoke-static {v1}, Lcom/twitter/config/d;->a(Lcom/twitter/config/f;)V

    .line 63
    new-instance v1, Lcom/twitter/android/initialization/e;

    invoke-direct {v1, p0}, Lcom/twitter/android/initialization/e;-><init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;)V

    invoke-virtual {v0, v1}, Lcom/twitter/fabric/CrashlyticsErrorLogger;->a(Ldau;)V

    .line 70
    invoke-static {v0}, Lbix;->a(Lbiw;)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v0

    .line 74
    if-nez v0, :cond_1

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    new-instance v1, Lbiz;

    invoke-direct {v1, p1, v0}, Lbiz;-><init>(Landroid/content/Context;Z)V

    invoke-static {v1}, Lbix;->a(Lbiw;)V

    .line 78
    :cond_2
    invoke-static {}, Lcom/twitter/android/au;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-static {p1}, Lcom/twitter/android/au;->a(Landroid/content/Context;)Lcom/twitter/android/au;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/twitter/android/au;->f()Lcom/twitter/util/concurrent/j;

    .line 81
    invoke-static {v0}, Lbix;->a(Lbiw;)V

    .line 84
    :cond_3
    new-instance v0, Lcom/twitter/android/initialization/g;

    .line 85
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-boolean v2, p0, Lcom/twitter/android/initialization/ErrorReporterInitializer;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/twitter/android/initialization/g;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 84
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 87
    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "build_info"

    invoke-static {}, Lcom/twitter/android/initialization/ErrorReporterInitializer;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbiu;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {v0}, Lbiu;->a()I

    .line 92
    new-instance v0, Lcom/twitter/android/initialization/f;

    invoke-direct {v0, p0}, Lcom/twitter/android/initialization/f;-><init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;)V

    invoke-static {v0}, Lbix;->a(Lbiy;)V

    .line 121
    return-void
.end method
