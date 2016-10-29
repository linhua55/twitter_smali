.class public Lcom/twitter/android/moments/ui/guide/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Laud;

.field private final c:Lcom/twitter/android/moments/ui/guide/b;

.field private final d:Ljava/lang/Long;


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Laud;Lcom/twitter/android/moments/ui/guide/b;J)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/a;->a:Landroid/content/res/Resources;

    .line 37
    iput-object p2, p0, Lcom/twitter/android/moments/ui/guide/a;->b:Laud;

    .line 38
    iput-object p3, p0, Lcom/twitter/android/moments/ui/guide/a;->c:Lcom/twitter/android/moments/ui/guide/b;

    .line 39
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/guide/a;->d:Ljava/lang/Long;

    .line 40
    return-void
.end method

.method public static a(Landroid/app/Activity;J)Lcom/twitter/android/moments/ui/guide/a;
    .locals 7

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/android/moments/ui/guide/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Laud;

    invoke-direct {v2, p0}, Laud;-><init>(Landroid/app/Activity;)V

    new-instance v3, Lcom/twitter/android/moments/ui/guide/b;

    invoke-direct {v3, p0}, Lcom/twitter/android/moments/ui/guide/b;-><init>(Landroid/app/Activity;)V

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/guide/a;-><init>(Landroid/content/res/Resources;Laud;Lcom/twitter/android/moments/ui/guide/b;J)V

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/ad;)Lcom/twitter/app/common/base/SnackbarData;
    .locals 7

    .prologue
    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/a;->c:Lcom/twitter/android/moments/ui/guide/b;

    iget-wide v2, p1, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/guide/b;->b(J)Lcom/twitter/android/moments/ui/guide/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/a;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/ui/guide/b;->a(J)Lcom/twitter/android/moments/ui/guide/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/guide/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/twitter/app/common/base/r;

    invoke-direct {v1}, Lcom/twitter/app/common/base/r;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f0a0574

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/r;->a(Ljava/lang/String;)Lcom/twitter/app/common/base/r;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/guide/a;->a:Landroid/content/res/Resources;

    const v3, 0x7f0a0345

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/r;->b(Ljava/lang/String;)Lcom/twitter/app/common/base/r;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcom/twitter/app/common/base/r;->a(Landroid/content/Intent;)Lcom/twitter/app/common/base/r;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/twitter/app/common/base/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/SnackbarData;

    .line 58
    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/moments/ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/twitter/util/collection/ab;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ad;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/guide/a;->a(Lcom/twitter/model/moments/ad;)Lcom/twitter/app/common/base/SnackbarData;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/twitter/android/moments/ui/guide/a;->b:Laud;

    new-instance v2, Lcom/twitter/android/moments/ui/guide/an;

    invoke-direct {v2}, Lcom/twitter/android/moments/ui/guide/an;-><init>()V

    .line 46
    invoke-virtual {v1, v2, p1}, Laud;->a(Laun;Ljava/lang/Object;)Laud;

    move-result-object v1

    new-instance v2, Lcom/twitter/app/common/base/v;

    invoke-direct {v2}, Lcom/twitter/app/common/base/v;-><init>()V

    .line 47
    invoke-virtual {v1, v2, v0}, Laud;->a(Laun;Ljava/lang/Object;)Laud;

    move-result-object v0

    const/4 v1, -0x1

    .line 48
    invoke-virtual {v0, v1}, Laud;->a(I)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/a;->b:Laud;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laud;->a(I)V

    goto :goto_0
.end method
