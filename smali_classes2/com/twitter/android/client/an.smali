.class Lcom/twitter/android/client/an;
.super Lcom/twitter/android/client/o;
.source "Twttr"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/twitter/android/client/OpenUriHelper;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/OpenUriHelper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 552
    iput-object p1, p0, Lcom/twitter/android/client/an;->b:Lcom/twitter/android/client/OpenUriHelper;

    iput-object p2, p0, Lcom/twitter/android/client/an;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/twitter/android/client/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/twitter/android/client/an;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 556
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    return v0
.end method
