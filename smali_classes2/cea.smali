.class public Lcea;
.super Laxu;
.source "Twttr"


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Laxu;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;I)V

    .line 38
    return-void
.end method

.method public static a(Layj;Ljava/lang/String;Laye;I)Lcea;
    .locals 7

    .prologue
    .line 26
    const-string/jumbo v0, "OutOfMemoryMetric"

    invoke-static {v0, p1}, Lcea;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    invoke-virtual {p0, v4}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcea;

    invoke-virtual {p0}, Layj;->f()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcea;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;I)V

    invoke-virtual {p0, v0}, Layj;->d(Laxy;)Laxy;

    move-result-object v0

    .line 32
    :cond_0
    check-cast v0, Lcea;

    return-object v0
.end method


# virtual methods
.method public t()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    invoke-static {}, Layj;->b()Layj;

    move-result-object v0

    invoke-virtual {v0}, Layj;->f()Landroid/content/Context;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/twitter/util/ui/r;->a(Landroid/content/Context;)Lcom/twitter/util/math/Size;

    move-result-object v1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string/jumbo v3, "screen_width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "screen_height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/twitter/util/math/Size;->b()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 51
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 52
    const-string/jumbo v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "memory_class="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 55
    const-string/jumbo v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "dalvik_heap_max="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
