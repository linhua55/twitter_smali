.class public Lcom/twitter/android/moments/ui/maker/bt;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasj",
        "<",
        "Lcom/twitter/model/moments/viewmodels/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/df;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

.field private final c:Lcom/twitter/android/moments/ui/maker/dp;

.field private final d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final e:Lcom/twitter/android/moments/data/maker/a;

.field private final f:Lams;

.field private g:Lrx/ap;

.field private h:Lcom/twitter/android/moments/ui/maker/dt;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/t;Lcom/twitter/android/moments/ui/maker/df;Lcom/twitter/android/moments/ui/maker/dp;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;Lams;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    .line 42
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bt;->a:Lcom/twitter/android/moments/ui/maker/df;

    .line 43
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bt;->c:Lcom/twitter/android/moments/ui/maker/dp;

    .line 44
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/bt;->d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 45
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/bt;->e:Lcom/twitter/android/moments/data/maker/a;

    .line 46
    iput-object p6, p0, Lcom/twitter/android/moments/ui/maker/bt;->f:Lams;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/ui/maker/dp;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->c:Lcom/twitter/android/moments/ui/maker/dp;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/bt;Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/maker/bt;->a(Lcom/twitter/android/moments/ui/maker/dt;Z)V

    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/maker/dt;Z)V
    .locals 1

    .prologue
    .line 102
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bt;->h:Lcom/twitter/android/moments/ui/maker/dt;

    .line 103
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->a(Lcom/twitter/android/moments/ui/maker/dt;Z)V

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->d:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/bt;)Lcom/twitter/android/moments/data/maker/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->e:Lcom/twitter/android/moments/data/maker/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->a:Lcom/twitter/android/moments/ui/maker/df;

    .line 67
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/df;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/ui/maker/dc;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dc;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 69
    :goto_0
    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/dc;->a()Lrx/w;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/maker/bu;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/moments/ui/maker/bu;-><init>(Lcom/twitter/android/moments/ui/maker/bt;Z)V

    .line 70
    invoke-virtual {v1, v2}, Lrx/w;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->g:Lrx/ap;

    .line 78
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bv;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/bv;-><init>(Lcom/twitter/android/moments/ui/maker/bt;Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->a(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    invoke-virtual {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->d()V

    .line 88
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    new-instance v2, Lcom/twitter/android/moments/ui/maker/bw;

    invoke-direct {v2, p0, v0}, Lcom/twitter/android/moments/ui/maker/bw;-><init>(Lcom/twitter/android/moments/ui/maker/bt;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->b(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->f:Lams;

    invoke-virtual {v0, p1}, Lams;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 99
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/twitter/model/moments/viewmodels/m;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/bt;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->g:Lrx/ap;

    .line 113
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/bt;->g:Lrx/ap;

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/t;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/t;->c()V

    .line 118
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bt;->h:Lcom/twitter/android/moments/ui/maker/dt;

    .line 119
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lcom/twitter/android/moments/ui/maker/dt;->b()V

    .line 122
    :cond_1
    iput-object v1, p0, Lcom/twitter/android/moments/ui/maker/bt;->h:Lcom/twitter/android/moments/ui/maker/dt;

    .line 123
    return-void
.end method
