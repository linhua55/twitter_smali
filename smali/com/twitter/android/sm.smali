.class Lcom/twitter/android/sm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/TotpGeneratorActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/TotpGeneratorActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/twitter/android/sm;->a:Lcom/twitter/android/TotpGeneratorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/twitter/android/sm;->a:Lcom/twitter/android/TotpGeneratorActivity;

    invoke-static {v0}, Lcom/twitter/android/TotpGeneratorActivity;->a(Lcom/twitter/android/TotpGeneratorActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-static {}, Lcom/twitter/util/ao;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    invoke-static {}, Lcom/twitter/util/ao;->a()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1e

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/twitter/android/sm;->a:Lcom/twitter/android/TotpGeneratorActivity;

    invoke-static {v0}, Lcom/twitter/android/TotpGeneratorActivity;->b(Lcom/twitter/android/TotpGeneratorActivity;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/sm;->a:Lcom/twitter/android/TotpGeneratorActivity;

    invoke-static {v0}, Lcom/twitter/android/TotpGeneratorActivity;->c(Lcom/twitter/android/TotpGeneratorActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method
