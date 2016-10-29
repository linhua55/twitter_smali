.class public Lcom/twitter/android/moments/ui/maker/di;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;

.field private final d:Lcom/twitter/android/moments/viewmodels/r;

.field private e:Lcom/twitter/model/moments/viewmodels/aa;

.field private f:Lcom/twitter/android/moments/viewmodels/q;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;Lcom/twitter/android/moments/viewmodels/r;Landroid/content/Context;Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/di;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    .line 50
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/di;->d:Lcom/twitter/android/moments/viewmodels/r;

    .line 51
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/di;->b:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/di;->c:Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;

    .line 53
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;)Lcom/twitter/android/moments/ui/maker/di;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/twitter/android/moments/ui/maker/di;

    invoke-static {}, Lcom/twitter/android/moments/viewmodels/r;->a()Lcom/twitter/android/moments/viewmodels/r;

    move-result-object v1

    new-instance v2, Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;

    invoke-direct {v2}, Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;-><init>()V

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/twitter/android/moments/ui/maker/di;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;Lcom/twitter/android/moments/viewmodels/r;Landroid/content/Context;Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;)V

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/di;)Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/di;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/aa;)V
    .locals 4

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/di;->e:Lcom/twitter/model/moments/viewmodels/aa;

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->d:Lcom/twitter/android/moments/viewmodels/r;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/di;->e:Lcom/twitter/model/moments/viewmodels/aa;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->f:Lcom/twitter/android/moments/viewmodels/q;

    .line 64
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->f:Lcom/twitter/android/moments/viewmodels/q;

    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/q;->c()Lcom/twitter/model/moments/k;

    move-result-object v1

    .line 65
    iget-object v0, v1, Lcom/twitter/model/moments/k;->e:Lcom/twitter/model/moments/g;

    .line 66
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/twitter/model/moments/g;->a()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, v0, Lcom/twitter/model/moments/g;->f:Lcom/twitter/util/math/Size;

    invoke-static {v2, v0}, Lcom/twitter/util/math/c;->a(Landroid/graphics/Rect;Lcom/twitter/util/math/Size;)Lcom/twitter/util/math/c;

    move-result-object v0

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/di;->f:Lcom/twitter/android/moments/viewmodels/q;

    invoke-interface {v2}, Lcom/twitter/android/moments/viewmodels/q;->a()Lcom/twitter/media/request/b;

    move-result-object v2

    .line 69
    new-instance v3, Lcom/twitter/android/moments/ui/maker/dj;

    invoke-direct {v3, p0, v0, v1}, Lcom/twitter/android/moments/ui/maker/dj;-><init>(Lcom/twitter/android/moments/ui/maker/di;Lcom/twitter/util/math/c;Lcom/twitter/model/moments/k;)V

    invoke-virtual {v2, v3}, Lcom/twitter/media/request/b;->a(Lcom/twitter/media/request/i;)Lcom/twitter/media/request/h;

    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->c:Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/di;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/TwitterImageRequester$Factory;->a(Landroid/content/Context;)Lcom/twitter/library/media/manager/TwitterImageRequester;

    move-result-object v0

    .line 81
    invoke-virtual {v2}, Lcom/twitter/media/request/b;->a()Lcom/twitter/media/request/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/TwitterImageRequester;->a(Lcom/twitter/media/request/a;)Z

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/library/media/manager/TwitterImageRequester;->a(Z)V

    .line 83
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/twitter/model/moments/k;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->e:Lcom/twitter/model/moments/viewmodels/aa;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/di;->f:Lcom/twitter/android/moments/viewmodels/q;

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/viewmodels/q;

    .line 91
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/di;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/ac;->b()Lcom/twitter/util/math/c;

    move-result-object v1

    .line 92
    if-nez v1, :cond_1

    .line 93
    new-instance v1, Lcom/twitter/model/moments/m;

    invoke-direct {v1}, Lcom/twitter/model/moments/m;-><init>()V

    .line 94
    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/q;->b()Lcom/twitter/util/math/Size;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;

    move-result-object v0

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/m;->a(Z)Lcom/twitter/model/moments/m;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/twitter/model/moments/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {v0}, Lcom/twitter/android/moments/viewmodels/q;->b()Lcom/twitter/util/math/Size;

    move-result-object v0

    .line 98
    invoke-static {v1, v0}, Lcom/twitter/model/moments/m;->a(Lcom/twitter/util/math/c;Lcom/twitter/util/math/Size;)Lcom/twitter/model/moments/m;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/twitter/model/moments/m;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/k;

    goto :goto_0
.end method
