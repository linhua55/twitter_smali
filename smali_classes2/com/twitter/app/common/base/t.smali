.class Lcom/twitter/app/common/base/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/f",
        "<",
        "Landroid/app/Activity;",
        "Landroid/view/View;",
        "Ljava/lang/String;",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/app/common/base/s;


# direct methods
.method constructor <init>(Lcom/twitter/app/common/base/s;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/twitter/app/common/base/t;->a:Lcom/twitter/app/common/base/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lcom/twitter/ui/widget/u;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Landroid/app/Activity;

    check-cast p2, Landroid/view/View;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/app/common/base/t;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method
