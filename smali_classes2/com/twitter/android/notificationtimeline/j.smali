.class Lcom/twitter/android/notificationtimeline/j;
.super Lcvt;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcvt",
        "<",
        "Lcom/twitter/android/notificationtimeline/k;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcvt;-><init>(Landroid/content/Context;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/twitter/android/notificationtimeline/k;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040267

    const/4 v2, 0x0

    .line 153
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 142
    check-cast p2, Lcom/twitter/android/notificationtimeline/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/notificationtimeline/j;->a(Landroid/content/Context;Lcom/twitter/android/notificationtimeline/k;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/notificationtimeline/k;)V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f1305c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    iget-object v1, p3, Lcom/twitter/android/notificationtimeline/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method protected bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p3, Lcom/twitter/android/notificationtimeline/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/notificationtimeline/j;->a(Landroid/view/View;Landroid/content/Context;Lcom/twitter/android/notificationtimeline/k;)V

    return-void
.end method
