.class public Lcom/twitter/android/metrics/g;
.super Layr;
.source "Twttr"


# instance fields
.field private final c:Lcom/twitter/android/metrics/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZILcom/twitter/app/common/list/aa;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p7}, Layr;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZI)V

    .line 32
    new-instance v0, Lcom/twitter/android/metrics/h;

    invoke-direct {v0, p0}, Lcom/twitter/android/metrics/h;-><init>(Lcom/twitter/android/metrics/g;)V

    iput-object v0, p0, Lcom/twitter/android/metrics/g;->c:Lcom/twitter/android/metrics/h;

    .line 33
    iget-object v0, p0, Lcom/twitter/android/metrics/g;->c:Lcom/twitter/android/metrics/h;

    invoke-virtual {p8, v0}, Lcom/twitter/app/common/list/aa;->a(Lcom/twitter/app/common/list/ah;)V

    .line 34
    return-void
.end method

.method public static b(Ljava/lang/String;Laye;Layj;ZILcom/twitter/app/common/list/aa;)Lcom/twitter/android/metrics/g;
    .locals 9

    .prologue
    .line 39
    const-string/jumbo v0, "TwitterListFragmentScrollFramerateMetric"

    invoke-static {v0, p0}, Lcom/twitter/android/metrics/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Layj;->a(Ljava/lang/String;)Laxy;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/twitter/android/metrics/g;

    invoke-virtual {p2}, Layj;->f()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "TwitterListFragmentScrollFramerateMetric"

    .line 42
    invoke-static {v2, p0}, Lcom/twitter/android/metrics/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/twitter/android/metrics/g;-><init>(Landroid/content/Context;Ljava/lang/String;Laye;Ljava/lang/String;Layf;ZILcom/twitter/app/common/list/aa;)V

    .line 41
    invoke-virtual {p2, v0}, Layj;->d(Laxy;)Laxy;

    move-result-object v0

    .line 44
    :cond_0
    check-cast v0, Lcom/twitter/android/metrics/g;

    return-object v0
.end method


# virtual methods
.method protected aV_()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/twitter/android/metrics/g;->c:Lcom/twitter/android/metrics/h;

    invoke-virtual {v1}, Lcom/twitter/android/metrics/h;->a()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
