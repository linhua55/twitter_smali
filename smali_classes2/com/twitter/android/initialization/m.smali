.class Lcom/twitter/android/initialization/m;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbjd;


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Ljava/text/NumberFormat;

.field final synthetic c:Lcom/twitter/android/initialization/OomeReporterInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/OomeReporterInitializer;Ljava/lang/StringBuilder;Ljava/text/NumberFormat;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/initialization/m;->c:Lcom/twitter/android/initialization/OomeReporterInitializer;

    iput-object p2, p0, Lcom/twitter/android/initialization/m;->a:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/initialization/m;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/twitter/android/initialization/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Activity Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    .line 78
    invoke-static {v1}, Lczg;->a(Ljava/lang/Class;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nActive Cursor Count: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-static {}, Lczg;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lczg;->c()Landroid/util/Pair;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/twitter/android/initialization/m;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nCursor Memory in KBs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nOther Shared Memory in KBs: "

    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 85
    invoke-virtual {v2, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nHeap Total: "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    .line 87
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nHeap Used: "

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    .line 89
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\nHeap Free: "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/initialization/m;->b:Ljava/text/NumberFormat;

    .line 91
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/initialization/m;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/twitter/android/initialization/OomeReporterInitializer;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v0}, Lbix;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lbjb;Z)V
    .locals 2

    .prologue
    .line 67
    if-nez p2, :cond_0

    invoke-static {}, Lcom/twitter/util/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    :cond_0
    const-string/jumbo v0, "OutOfMemoryErrorLog.android_report"

    invoke-direct {p0}, Lcom/twitter/android/initialization/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lbjb;->a(Ljava/lang/String;Ljava/lang/Object;)Lbiv;

    .line 71
    :cond_1
    return-void
.end method
