.class public Lcom/crashlytics/android/ndk/b;
.super Lio/fabric/sdk/android/p;
.source "Twttr"

# interfaces
.implements Lv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/p",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lv;"
    }
.end annotation


# instance fields
.field a:Lz;

.field private final b:Lcom/crashlytics/android/ndk/e;

.field private final c:Lcom/crashlytics/android/ndk/d;

.field private d:Lcom/crashlytics/android/ndk/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/crashlytics/android/ndk/JniNativeApi;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/JniNativeApi;-><init>()V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/b;-><init>(Lcom/crashlytics/android/ndk/e;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/ndk/e;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lio/fabric/sdk/android/p;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/crashlytics/android/ndk/b;->b:Lcom/crashlytics/android/ndk/e;

    .line 39
    new-instance v0, Lcom/crashlytics/android/ndk/d;

    invoke-direct {v0}, Lcom/crashlytics/android/ndk/d;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/ndk/b;->c:Lcom/crashlytics/android/ndk/d;

    .line 40
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 141
    .line 142
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Reading NDK crash data..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :try_start_1
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 151
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 149
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsNdk"

    const-string/jumbo v5, "Failed to read NDK crash data."

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string/jumbo v1, "Error closing crash data file."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 148
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static e()Lcom/crashlytics/android/ndk/b;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/crashlytics/android/ndk/b;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/p;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/ndk/b;

    return-object v0
.end method

.method private h()Ljava/io/File;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Ldek;

    invoke-direct {v0, p0}, Ldek;-><init>(Lio/fabric/sdk/android/p;)V

    invoke-virtual {v0}, Ldek;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "1.1.4.142"

    return-object v0
.end method

.method a(Lcom/crashlytics/android/ndk/a;Lcom/crashlytics/android/core/f;Lcom/crashlytics/android/core/y;)Z
    .locals 5

    .prologue
    .line 86
    iput-object p1, p0, Lcom/crashlytics/android/ndk/b;->d:Lcom/crashlytics/android/ndk/a;

    .line 87
    const/4 v1, 0x0

    .line 89
    :try_start_0
    invoke-interface {p1}, Lcom/crashlytics/android/ndk/a;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/crashlytics/android/ndk/b;->b:Lcom/crashlytics/android/ndk/e;

    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/b;->E()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/crashlytics/android/ndk/e;->a(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p3, p2, p0}, Lcom/crashlytics/android/core/y;->a(Lcom/crashlytics/android/core/f;Lcom/crashlytics/android/ndk/b;)V

    .line 98
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Crashlytics NDK initialization successful"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsNdk"

    const-string/jumbo v4, "Error initializing CrashlyticsNdk"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/s;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method protected a_()Z
    .locals 3

    .prologue
    .line 71
    const-class v0, Lcom/crashlytics/android/core/f;

    invoke-static {v0}, Lio/fabric/sdk/android/f;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/p;

    move-result-object v0

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;

    const-string/jumbo v1, "CrashlyticsNdk requires Crashlytics"

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/concurrency/UnmetDependencyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    new-instance v0, Lcom/crashlytics/android/ndk/i;

    invoke-direct {p0}, Lcom/crashlytics/android/ndk/b;->h()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/crashlytics/android/ndk/i;-><init>(Ljava/io/File;)V

    .line 77
    invoke-static {}, Lcom/crashlytics/android/core/f;->e()Lcom/crashlytics/android/core/f;

    move-result-object v1

    .line 78
    new-instance v2, Lcom/crashlytics/android/core/y;

    invoke-direct {v2}, Lcom/crashlytics/android/core/y;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/crashlytics/android/ndk/b;->a(Lcom/crashlytics/android/ndk/a;Lcom/crashlytics/android/core/f;Lcom/crashlytics/android/core/y;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-ndk"

    return-object v0
.end method

.method public d()Lz;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->a:Lz;

    return-object v0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/crashlytics/android/ndk/b;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->d:Lcom/crashlytics/android/ndk/a;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/a;->b()Ljava/io/File;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsNdk"

    const-string/jumbo v3, "Found NDK crash file..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/crashlytics/android/ndk/b;->c:Lcom/crashlytics/android/ndk/d;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/ndk/d;->a(Ljava/lang/String;)Lz;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/ndk/b;->a:Lz;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/ndk/b;->d:Lcom/crashlytics/android/ndk/a;

    invoke-interface {v0}, Lcom/crashlytics/android/ndk/a;->c()V

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lio/fabric/sdk/android/f;->h()Lio/fabric/sdk/android/s;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsNdk"

    const-string/jumbo v2, "Crashlytics failed to parse prior crash data."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
