.class public Lcom/twitter/android/moments/ui/maker/dc;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/moments/ui/maker/t;

.field private final c:Lcom/twitter/android/moments/ui/maker/u;

.field private final d:Lrx/t;

.field private final e:Lrx/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/u;Lcom/twitter/android/moments/ui/maker/t;Lrx/t;Lrx/t;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/dc;->a:Landroid/content/Context;

    .line 86
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/dc;->b:Lcom/twitter/android/moments/ui/maker/t;

    .line 87
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dc;->c:Lcom/twitter/android/moments/ui/maker/u;

    .line 88
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/dc;->d:Lrx/t;

    .line 89
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/dc;->e:Lrx/t;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/dc;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dc;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/du;Laeo;)Lcom/twitter/android/moments/ui/maker/dc;
    .locals 7

    .prologue
    .line 45
    new-instance v6, Lcom/twitter/android/moments/ui/maker/dd;

    invoke-direct {v6, p0}, Lcom/twitter/android/moments/ui/maker/dd;-><init>(Landroid/app/Activity;)V

    .line 52
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/dy;

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcbh;->a()Lcbh;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/twitter/android/moments/ui/fullscreen/dy;-><init>(Landroid/content/res/Resources;Lcbh;)V

    .line 55
    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/fp;

    new-instance v3, Lcom/twitter/android/card/ae;

    invoke-direct {v3}, Lcom/twitter/android/card/ae;-><init>()V

    invoke-direct {v2, p0, v3, p5, v1}, Lcom/twitter/android/moments/ui/fullscreen/fp;-><init>(Landroid/app/Activity;Lcom/twitter/android/card/d;Laeo;Lcin;)V

    .line 57
    new-instance v3, Lcom/twitter/android/moments/ui/fullscreen/cv;

    .line 58
    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/twitter/android/moments/ui/fullscreen/cv;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fp;Lrx/t;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, p0, v3, v1}, Lcom/twitter/android/moments/ui/maker/dz;->a(Landroid/content/res/Resources;Landroid/view/LayoutInflater;Landroid/app/Activity;Lcom/twitter/android/moments/ui/fullscreen/cv;Lcin;)Lcom/twitter/android/moments/ui/maker/dz;

    move-result-object v4

    .line 62
    new-instance v0, Lcom/twitter/android/moments/ui/maker/cw;

    .line 64
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/ej;->a()Lcom/twitter/android/moments/ui/maker/ej;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/moments/ui/maker/cw;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/util/math/Size;Lcom/twitter/util/math/Size;Lcom/twitter/android/moments/ui/maker/el;Lcom/twitter/android/moments/ui/maker/eh;Lcom/twitter/util/object/d;)V

    .line 65
    new-instance v2, Lcom/twitter/android/moments/ui/maker/u;

    invoke-direct {v2, p1, v0, p4}, Lcom/twitter/android/moments/ui/maker/u;-><init>(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/android/moments/ui/maker/cw;Lcom/twitter/android/moments/ui/maker/du;)V

    .line 67
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dc;

    new-instance v3, Lcom/twitter/android/moments/ui/maker/t;

    invoke-direct {v3}, Lcom/twitter/android/moments/ui/maker/t;-><init>()V

    .line 68
    invoke-static {}, Lcom/twitter/android/moments/ui/maker/ct;->a()Lrx/t;

    move-result-object v4

    invoke-static {}, Ldiz;->a()Lrx/t;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/dc;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/u;Lcom/twitter/android/moments/ui/maker/t;Lrx/t;Lrx/t;)V

    .line 67
    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/dc;)Lcom/twitter/android/moments/ui/maker/t;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dc;->b:Lcom/twitter/android/moments/ui/maker/t;

    return-object v0
.end method

.method private c()Ldjj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldjj",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/twitter/android/moments/ui/maker/dt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/twitter/android/moments/ui/maker/de;

    invoke-direct {v0, p0}, Lcom/twitter/android/moments/ui/maker/de;-><init>(Lcom/twitter/android/moments/ui/maker/dc;)V

    return-object v0
.end method


# virtual methods
.method public a()Lrx/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lcom/twitter/android/moments/ui/maker/dt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dc;->c:Lcom/twitter/android/moments/ui/maker/u;

    .line 109
    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldls;->a()Lrx/t;

    move-result-object v0

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dc;->c:Lcom/twitter/android/moments/ui/maker/u;

    .line 111
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/u;->b()Lrx/w;

    move-result-object v1

    .line 112
    invoke-virtual {v1, v0}, Lrx/w;->b(Lrx/t;)Lrx/w;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dc;->e:Lrx/t;

    .line 113
    invoke-virtual {v0, v1}, Lrx/w;->a(Lrx/t;)Lrx/w;

    move-result-object v0

    .line 116
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/dc;->c()Ldjj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/w;->c(Ldjj;)Lrx/w;

    move-result-object v0

    .line 110
    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dc;->d:Lrx/t;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dc;->c:Lcom/twitter/android/moments/ui/maker/u;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/u;->a()Z

    move-result v0

    return v0
.end method
