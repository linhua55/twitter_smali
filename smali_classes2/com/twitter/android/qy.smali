.class public Lcom/twitter/android/qy;
.super Lbkj;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkj",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbkj;-><init>(Landroid/content/Context;I)V

    .line 132
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 137
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/qy;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 142
    const v0, 0x7f1301a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/twitter/android/qy;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/TemporaryAppPasswordFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p3, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/qy;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method
