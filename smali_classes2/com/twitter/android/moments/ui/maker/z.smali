.class public Lcom/twitter/android/moments/ui/maker/z;
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
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

.field private final c:Lcom/twitter/android/moments/ui/maker/aj;

.field private final d:Lams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/viewdelegate/d;Lcom/twitter/android/moments/ui/maker/aj;Lams;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/z;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/z;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    .line 33
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/z;->c:Lcom/twitter/android/moments/ui/maker/aj;

    .line 34
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/z;->d:Lams;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/z;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/z;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lamu;)V
    .locals 2

    .prologue
    .line 60
    instance-of v0, p1, Lamv;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamv;

    iget-object v0, v0, Lamv;->a:Lcom/twitter/model/moments/viewmodels/m;

    .line 62
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/z;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/ui/maker/aj;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 63
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/z;->d:Lams;

    invoke-virtual {v1, v0}, Lams;->a(Lcom/twitter/model/moments/viewmodels/m;)V

    .line 64
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/m;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/z;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/z;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/d;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/aa;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/aa;-><init>(Lcom/twitter/android/moments/ui/maker/z;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/d;->c(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lamu;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/ui/maker/z;->a(Lamu;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/z;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aj;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/z;->c:Lcom/twitter/android/moments/ui/maker/aj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/aj;->b()V

    .line 71
    return-void
.end method
