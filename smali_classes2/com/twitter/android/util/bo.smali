.class Lcom/twitter/android/util/bo;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/l;


# instance fields
.field final synthetic a:Lrx/an;

.field final synthetic b:Lcom/twitter/android/util/bm;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/bm;Lrx/an;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/util/bo;->b:Lcom/twitter/android/util/bm;

    iput-object p2, p0, Lcom/twitter/android/util/bo;->a:Lrx/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/twitter/android/util/bo;->a:Lrx/an;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/an;->a(Ljava/lang/Object;)V

    .line 67
    return-void
.end method
