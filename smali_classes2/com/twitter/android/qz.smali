.class Lcom/twitter/android/qz;
.super Lcom/twitter/android/widget/bl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/widget/bl",
        "<",
        "Lcom/twitter/android/qy;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/twitter/android/qh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/android/qy;)V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/widget/bl;-><init>(Landroid/widget/ListAdapter;I)V

    .line 158
    new-instance v0, Lcom/twitter/android/qh;

    const v1, 0x7f0a03da

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/qz;->b:Lcom/twitter/android/qh;

    .line 159
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 178
    const v0, 0x7f04036d

    iget-object v1, p0, Lcom/twitter/android/qz;->b:Lcom/twitter/android/qh;

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-static {v0, p1, p2, v1, v2}, Lcom/twitter/android/qi;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/qh;F)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/twitter/android/qz;->b:Lcom/twitter/android/qh;

    return-object v0
.end method
