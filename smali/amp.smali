.class public Lamp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Lcom/twitter/android/moments/data/maker/a;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

.field private final c:Lcom/twitter/android/moments/ui/maker/navigation/ao;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/viewdelegate/n;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lamp;->a:Lcom/twitter/android/moments/data/maker/a;

    .line 29
    iput-object p2, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    .line 30
    iput-object p3, p0, Lamp;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 31
    invoke-direct {p0, p4}, Lamp;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)Lamp;
    .locals 3

    .prologue
    .line 63
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/app/Activity;)Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    move-result-object v0

    .line 65
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p4}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v1

    .line 67
    iget-object v2, v1, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->b(Ljava/lang/String;)V

    .line 68
    iget-object v1, v1, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/twitter/android/moments/viewmodels/r;->a()Lcom/twitter/android/moments/viewmodels/r;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/q;->a()Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Lcom/twitter/media/request/b;)V

    .line 72
    :cond_0
    new-instance v1, Lamp;

    invoke-direct {v1, p2, v0, p3, p4}, Lamp;-><init>(Lcom/twitter/android/moments/data/maker/a;Lcom/twitter/android/moments/ui/maker/viewdelegate/n;Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    return-object v1
.end method

.method static synthetic a(Lamp;)Lcom/twitter/android/moments/data/maker/a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lamp;->a:Lcom/twitter/android/moments/data/maker/a;

    return-object v0
.end method

.method private a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    new-instance v1, Lamq;

    invoke-direct {v1, p0}, Lamq;-><init>(Lamp;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Lamr;)V

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/twitter/model/moments/viewmodels/MomentPage;->f()Lcom/twitter/model/moments/ad;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    iget-object v2, v0, Lcom/twitter/model/moments/ad;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->b(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    iget-object v0, v0, Lcom/twitter/model/moments/ad;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    .line 55
    invoke-static {}, Lcom/twitter/android/moments/viewmodels/r;->a()Lcom/twitter/android/moments/viewmodels/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/q;->a()Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Lcom/twitter/media/request/b;)V

    .line 57
    :cond_0
    return-void
.end method

.method static synthetic b(Lamp;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lamp;->c:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method


# virtual methods
.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lamp;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
