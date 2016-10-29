.class public Lcom/twitter/android/moments/ui/fullscreen/fp;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final a:Lcom/twitter/android/moments/ui/fullscreen/fr;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Lcom/twitter/android/card/d;

.field private final d:Laeo;

.field private final e:Lcin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/fs;

    invoke-direct {v0}, Lcom/twitter/android/moments/ui/fullscreen/fs;-><init>()V

    sput-object v0, Lcom/twitter/android/moments/ui/fullscreen/fp;->a:Lcom/twitter/android/moments/ui/fullscreen/fr;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/android/card/d;Laeo;Lcin;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->b:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->c:Lcom/twitter/android/card/d;

    .line 32
    iput-object p3, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->d:Laeo;

    .line 33
    iput-object p4, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->e:Lcin;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/fp;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/fullscreen/fr;
    .locals 5

    .prologue
    const v4, 0x7f1304cf

    .line 39
    invoke-virtual {p2}, Lcom/twitter/model/core/Tweet;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    if-eqz v0, :cond_0

    .line 40
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/gi;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/gj;

    .line 41
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Lcom/twitter/android/moments/ui/fullscreen/gj;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, p2, Lcom/twitter/model/core/Tweet;->s:Lcom/twitter/model/core/ay;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->e:Lcin;

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/gi;-><init>(Lcom/twitter/android/moments/ui/fullscreen/gj;Lcom/twitter/model/core/ay;Lcin;)V

    move-object v0, v1

    .line 69
    :goto_0
    return-object v0

    .line 44
    :cond_0
    instance-of v0, p3, Lcom/twitter/model/moments/viewmodels/w;

    if-eqz v0, :cond_1

    .line 45
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/gf;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0, p2}, Lcom/twitter/android/moments/ui/fullscreen/gf;-><init>(Landroid/view/ViewGroup;Lcom/twitter/model/core/Tweet;)V

    move-object v0, v1

    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Lcey;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->q()Lcom/twitter/model/moments/ah;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/df;

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/dh;

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->b:Landroid/app/Activity;

    .line 51
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Lcom/twitter/android/moments/ui/fullscreen/fq;

    invoke-direct {v4, p0}, Lcom/twitter/android/moments/ui/fullscreen/fq;-><init>(Lcom/twitter/android/moments/ui/fullscreen/fp;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/twitter/android/moments/ui/fullscreen/dh;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/util/object/c;)V

    .line 60
    invoke-virtual {p3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->g()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->q()Lcom/twitter/model/moments/ah;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->d:Laeo;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/twitter/android/moments/ui/fullscreen/df;-><init>(Lcom/twitter/android/moments/ui/fullscreen/dh;Ljava/lang/Long;Lcom/twitter/model/moments/ah;Laeo;)V

    move-object v0, v1

    .line 49
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->p()Lcom/twitter/model/moments/z;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/ib;

    new-instance v2, Lall;

    .line 66
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Lall;-><init>(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/fp;->c:Lcom/twitter/android/card/d;

    .line 67
    invoke-virtual {p3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->p()Lcom/twitter/model/moments/z;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/twitter/android/moments/ui/fullscreen/ib;-><init>(Lall;Lcom/twitter/android/card/d;Lcom/twitter/model/moments/z;)V

    move-object v0, v1

    .line 64
    goto :goto_0

    .line 69
    :cond_3
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/fp;->a:Lcom/twitter/android/moments/ui/fullscreen/fr;

    goto :goto_0
.end method
