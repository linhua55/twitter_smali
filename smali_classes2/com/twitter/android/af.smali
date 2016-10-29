.class Lcom/twitter/android/af;
.super Lcom/twitter/android/widget/bl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/android/widget/bl",
        "<",
        "Lcom/twitter/android/ae;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/twitter/android/qh;

.field private final c:Lcom/twitter/android/qh;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/android/ae;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Lcom/twitter/android/widget/bl;-><init>(Landroid/widget/ListAdapter;I)V

    .line 209
    new-instance v0, Lcom/twitter/android/qh;

    const v1, 0x7f0a0227

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/af;->b:Lcom/twitter/android/qh;

    .line 210
    new-instance v0, Lcom/twitter/android/qh;

    const v1, 0x7f0a03d9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/qh;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/twitter/android/af;->c:Lcom/twitter/android/qh;

    .line 211
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 225
    const v0, 0x7f04036d

    iget-object v1, p0, Lcom/twitter/android/af;->b:Lcom/twitter/android/qh;

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-static {v0, p1, p2, v1, v2}, Lcom/twitter/android/qi;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/qh;F)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/twitter/android/af;->b:Lcom/twitter/android/qh;

    return-object v0
.end method

.method protected b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 231
    const v0, 0x7f04036d

    iget-object v1, p0, Lcom/twitter/android/af;->c:Lcom/twitter/android/qh;

    sget v2, Lcom/twitter/library/util/al;->a:F

    invoke-static {v0, p1, p2, v1, v2}, Lcom/twitter/android/qi;->a(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/twitter/android/qh;F)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/twitter/android/af;->c:Lcom/twitter/android/qh;

    return-object v0
.end method
