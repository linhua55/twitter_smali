.class public Lcom/twitter/android/moments/ui/maker/am;
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
.field private final a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

.field private final b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final c:Lcom/twitter/android/moments/ui/maker/aj;

.field private final d:Lams;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/aj;Lams;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/am;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    .line 33
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/am;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 34
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/am;->c:Lcom/twitter/android/moments/ui/maker/aj;

    .line 35
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/am;->d:Lams;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/am;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->b:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/an;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/an;-><init>(Lcom/twitter/android/moments/ui/maker/am;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/m;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ao;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/ao;-><init>(Lcom/twitter/android/moments/ui/maker/am;Lcom/twitter/model/moments/viewmodels/m;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->a(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/ap;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/ap;-><init>(Lcom/twitter/android/moments/ui/maker/am;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->b(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a(Lamu;)V
    .locals 2

    .prologue
    .line 46
    instance-of v0, p1, Lamw;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamw;

    iget-object v0, v0, Lamw;->a:Lcom/twitter/model/moments/viewmodels/m;

    .line 48
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/am;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/aj;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 49
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/am;->d:Lams;

    invoke-virtual {v1, v0}, Lams;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 50
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/twitter/android/moments/ui/maker/am;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 51
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/am;->c()V

    .line 52
    invoke-direct {p0, v0}, Lcom/twitter/android/moments/ui/maker/am;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 53
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->a:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->e()V

    .line 55
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/am;->a(Lamu;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aj;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/am;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aj;->b()V

    .line 60
    return-void
.end method
