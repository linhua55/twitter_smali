.class Lcom/twitter/android/gu;
.super Lcom/twitter/util/ui/e;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/gt;


# direct methods
.method constructor <init>(Lcom/twitter/android/gt;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/gt;

    invoke-direct {p0}, Lcom/twitter/util/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/gt;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/gt;->a(Ljava/lang/String;)V

    .line 462
    return-void
.end method
