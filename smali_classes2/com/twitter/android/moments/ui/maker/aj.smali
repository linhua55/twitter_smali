.class public Lcom/twitter/android/moments/ui/maker/aj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field final a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field final b:Landroid/content/Context;

.field final c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

.field private final d:Lcom/twitter/android/moments/ui/maker/df;

.field private e:Lrx/ap;

.field private f:Lcom/twitter/android/moments/ui/maker/dt;

.field private g:Lcom/twitter/model/moments/viewmodels/m;

.field private h:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/navigation/ao;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    .line 37
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/aj;->d:Lcom/twitter/android/moments/ui/maker/df;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/aj;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 39
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/aj;->b:Landroid/content/Context;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/aj;Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/aj;->a(Lcom/twitter/android/moments/ui/maker/dt;Z)V

    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/aj;->f:Lcom/twitter/android/moments/ui/maker/dt;

    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->g:Lcom/twitter/model/moments/viewmodels/m;

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/aj;->b(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a(Lcom/twitter/android/moments/ui/maker/dt;Z)V

    .line 77
    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z
    .locals 1

    .prologue
    .line 94
    instance-of v0, p1, Lcom/twitter/model/moments/viewmodels/aa;

    return v0
.end method

.method private b(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/aj;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->d()V

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/al;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/al;-><init>(Lcom/twitter/android/moments/ui/maker/aj;Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a(Landroid/view/View$OnClickListener;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->f()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->i()Lcom/twitter/model/moments/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/model/moments/ak;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 52
    invoke-virtual {v1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->m()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->m()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/twitter/android/moments/ui/maker/aj;->b()V

    .line 57
    :cond_1
    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 58
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/aj;->g:Lcom/twitter/model/moments/viewmodels/m;

    .line 59
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->d:Lcom/twitter/android/moments/ui/maker/df;

    .line 60
    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/df;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/dc;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dc;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 62
    :goto_1
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dc;->a()Lrx/w;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/maker/ak;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/moments/ui/maker/ak;-><init>(Lcom/twitter/android/moments/ui/maker/aj;Z)V

    .line 63
    invoke-virtual {v1, v2}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->e:Lrx/ap;

    goto :goto_0

    .line 61
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->e:Lrx/ap;

    .line 100
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->e:Lrx/ap;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->c:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c()V

    .line 105
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/aj;->f:Lcom/twitter/android/moments/ui/maker/dt;

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/dt;->b()V

    .line 109
    :cond_1
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->f:Lcom/twitter/android/moments/ui/maker/dt;

    .line 110
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/aj;->h:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 111
    return-void
.end method
