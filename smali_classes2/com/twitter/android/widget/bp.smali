.class final Lcom/twitter/android/widget/bp;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Landroid/view/View;",
        "Lcom/twitter/android/widget/bo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/twitter/android/widget/bo;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/android/widget/bo;

    invoke-direct {v0, p1}, Lcom/twitter/android/widget/bo;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/twitter/android/widget/bp;->a(Landroid/view/View;)Lcom/twitter/android/widget/bo;

    move-result-object v0

    return-object v0
.end method
