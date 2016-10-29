.class public Lcom/twitter/android/moments/ui/maker/cg;
.super Lcom/twitter/app/common/inject/v;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/a;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/twitter/util/object/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Lcom/twitter/util/object/c",
            "<",
            "Lcom/twitter/app/common/inject/o;",
            "Lcom/twitter/android/moments/ui/maker/navigation/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/twitter/app/common/inject/v;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/cg;->q()Lcom/twitter/app/common/inject/o;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/twitter/util/object/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/moments/ui/maker/navigation/a;

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/cg;->a:Lcom/twitter/android/moments/ui/maker/navigation/a;

    .line 56
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cg;->a:Lcom/twitter/android/moments/ui/maker/navigation/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/cg;->a(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public static a(Landroid/app/Activity;Laeo;Laeb;)Lcom/twitter/android/moments/ui/maker/cg;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 32
    new-instance v0, Lcom/twitter/android/moments/ui/maker/du;

    new-instance v1, Landroid/util/LruCache;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/twitter/android/moments/ui/maker/du;-><init>(Landroid/util/LruCache;)V

    .line 35
    invoke-static {p0, v0, p1}, Lcom/twitter/android/moments/ui/maker/df;->a(Landroid/app/Activity;Lcom/twitter/android/moments/ui/maker/du;Laeo;)Lcom/twitter/android/moments/ui/maker/df;

    move-result-object v3

    .line 37
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401b7

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 38
    const v0, 0x7f130490

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 39
    new-instance v4, Lcom/twitter/android/moments/data/aw;

    invoke-direct {v4, v5}, Lcom/twitter/android/moments/data/aw;-><init>(Ljava/lang/Object;)V

    .line 40
    new-instance v0, Lcom/twitter/android/moments/ui/maker/ch;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/ch;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/data/aw;Laeb;)V

    .line 50
    new-instance v1, Lcom/twitter/android/moments/ui/maker/cg;

    invoke-direct {v1, v6, v2, v0}, Lcom/twitter/android/moments/ui/maker/cg;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/twitter/util/object/c;)V

    return-object v1
.end method


# virtual methods
.method public as_()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/twitter/app/common/inject/v;->as_()V

    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cg;->a:Lcom/twitter/android/moments/ui/maker/navigation/a;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/navigation/a;->b()V

    .line 64
    return-void
.end method
