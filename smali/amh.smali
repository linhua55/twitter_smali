.class public Lamh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lasm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lasm",
        "<",
        "Lamy;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

.field private final b:Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

.field private final c:Lcom/twitter/android/moments/ui/maker/aq;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/navigation/ao;Lcom/twitter/android/moments/ui/maker/viewdelegate/l;Lcom/twitter/android/moments/ui/maker/aq;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lamh;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    .line 28
    iput-object p2, p0, Lamh;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    .line 29
    iput-object p3, p0, Lamh;->c:Lcom/twitter/android/moments/ui/maker/aq;

    .line 30
    return-void
.end method

.method static synthetic a(Lamh;)Lcom/twitter/android/moments/ui/maker/aq;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lamh;->c:Lcom/twitter/android/moments/ui/maker/aq;

    return-object v0
.end method

.method static synthetic b(Lamh;)Lcom/twitter/android/moments/ui/maker/navigation/ao;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lamh;->a:Lcom/twitter/android/moments/ui/maker/navigation/ao;

    return-object v0
.end method


# virtual methods
.method public a(Lamy;)V
    .locals 3

    .prologue
    .line 34
    instance-of v0, p1, Lamz;

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lamz;

    .line 36
    invoke-virtual {v0}, Lamz;->a()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/twitter/android/moments/viewmodels/r;->a()Lcom/twitter/android/moments/viewmodels/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/android/moments/viewmodels/r;->a(Lcom/twitter/model/moments/viewmodels/MomentPage;)Lcom/twitter/android/moments/viewmodels/q;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lamh;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    invoke-interface {v1}, Lcom/twitter/android/moments/viewmodels/q;->a()Lcom/twitter/media/request/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->a(Lcom/twitter/media/request/b;)V

    .line 39
    iget-object v1, p0, Lamh;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    new-instance v2, Lami;

    invoke-direct {v2, p0, v0}, Lami;-><init>(Lamh;Lcom/twitter/model/moments/viewmodels/MomentPage;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->a(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lamy;

    invoke-virtual {p0, p1}, Lamh;->a(Lamy;)V

    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lamh;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/l;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/viewdelegate/l;->aK_()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
