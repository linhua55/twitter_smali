.class public Lcom/twitter/android/initialization/OomeReporterInitializer;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lauo;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/twitter/android/initialization/OomeReporterInitializer;->b(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 256
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/initialization/OomeReporterInitializer;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 51
    const-class v0, Landroid/database/sqlite/SQLiteOutOfMemoryException;

    invoke-static {v0}, Lbjc;->a(Ljava/lang/Class;)V

    .line 54
    :try_start_0
    const-string/jumbo v0, "android.database.CursorWindowAllocationException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbjc;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    new-instance v1, Lcom/twitter/android/initialization/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/twitter/android/initialization/p;-><init>(Lcom/twitter/android/initialization/m;)V

    .line 61
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 63
    new-instance v3, Lcom/twitter/android/initialization/m;

    invoke-direct {v3, p0, v0, v2}, Lcom/twitter/android/initialization/m;-><init>(Lcom/twitter/android/initialization/OomeReporterInitializer;Ljava/lang/StringBuilder;Ljava/text/NumberFormat;)V

    invoke-static {v3}, Lbjc;->a(Lbjd;)V

    .line 100
    new-instance v3, Lcom/twitter/android/initialization/n;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/twitter/android/initialization/n;-><init>(Lcom/twitter/android/initialization/OomeReporterInitializer;Ljava/lang/StringBuilder;Lcom/twitter/android/initialization/p;Ljava/text/NumberFormat;)V

    invoke-static {v3}, Lbjc;->a(Lbjd;)V

    .line 238
    new-instance v0, Lcom/twitter/android/initialization/o;

    invoke-direct {v0, p0}, Lcom/twitter/android/initialization/o;-><init>(Lcom/twitter/android/initialization/OomeReporterInitializer;)V

    invoke-static {v0}, Lbjc;->a(Lbjd;)V

    .line 246
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method
