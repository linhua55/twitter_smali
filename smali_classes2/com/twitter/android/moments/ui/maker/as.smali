.class public Lcom/twitter/android/moments/ui/maker/as;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasi;
.implements Lasm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasi",
        "<",
        "Lamu;",
        ">;",
        "Lasm",
        "<",
        "Lamu;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/aw;

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final c:Lrx/ap;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/aw;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/data/maker/a;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    .line 32
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/as;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 33
    invoke-virtual {p3}, Lcom/twitter/android/moments/data/maker/a;->a()Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/at;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/at;-><init>(Lcom/twitter/android/moments/ui/maker/as;)V

    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->c:Lrx/ap;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/as;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/as;Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/maker/as;->a(Lcom/twitter/model/moments/viewmodels/a;)V

    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/a;)V
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->a()Lcom/twitter/model/moments/ad;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    iget-object v2, v0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/aw;->a(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    iget-object v0, v0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/aw;->b(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/MomentPage;->e()Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    move-result-object v0

    sget-object v1, Lcom/twitter/model/moments/viewmodels/MomentPage$Type;->g:Lcom/twitter/model/moments/viewmodels/MomentPage$Type;

    if-ne v0, v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/a;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/viewmodels/q;

    iget-object v0, v0, Lcom/twitter/model/moments/viewmodels/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/aw;->c(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lamu;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/au;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/au;-><init>(Lcom/twitter/android/moments/ui/maker/as;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/aw;->a(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/av;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/av;-><init>(Lcom/twitter/android/moments/ui/maker/as;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/aw;->b(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/as;->a(Lamu;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->a:Lcom/twitter/android/moments/ui/maker/aw;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aw;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/as;->c:Lrx/ap;

    invoke-static {v0}, Lddg;->a(Lrx/ap;)V

    .line 76
    return-void
.end method
