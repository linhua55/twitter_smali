.class Lcom/twitter/android/jc;
.super Landroid/widget/ArrayAdapter;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginVerificationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginVerificationFragment;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    iput-object p1, p0, Lcom/twitter/android/jc;->a:Lcom/twitter/android/LoginVerificationFragment;

    .line 547
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 548
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 552
    if-nez p1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/twitter/android/jc;->a:Lcom/twitter/android/LoginVerificationFragment;

    invoke-virtual {v0, p3}, Lcom/twitter/android/LoginVerificationFragment;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 555
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
