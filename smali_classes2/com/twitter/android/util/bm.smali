.class final Lcom/twitter/android/util/bm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/am;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/am",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lden;

.field final synthetic b:Landroid/support/v4/app/FragmentManager;


# direct methods
.method constructor <init>(Lden;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/android/util/bm;->a:Lden;

    iput-object p2, p0, Lcom/twitter/android/util/bm;->b:Landroid/support/v4/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/an;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/an",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/util/bm;->a:Lden;

    invoke-interface {v0}, Lden;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 47
    new-instance v1, Lcom/twitter/android/util/bn;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/util/bn;-><init>(Lcom/twitter/android/util/bm;Lrx/an;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/m;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 63
    new-instance v1, Lcom/twitter/android/util/bo;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/util/bo;-><init>(Lcom/twitter/android/util/bm;Lrx/an;)V

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Lcom/twitter/app/common/base/l;)Lcom/twitter/app/common/base/BaseDialogFragment;

    .line 69
    iget-object v1, p0, Lcom/twitter/android/util/bm;->b:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 70
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lrx/an;

    invoke-virtual {p0, p1}, Lcom/twitter/android/util/bm;->a(Lrx/an;)V

    return-void
.end method
