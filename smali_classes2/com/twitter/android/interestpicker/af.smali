.class Lcom/twitter/android/interestpicker/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjf",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/android/interestpicker/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/interestpicker/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/interestpicker/x;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/twitter/android/interestpicker/af;->a:Lcom/twitter/android/interestpicker/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/interestpicker/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/twitter/android/interestpicker/af;->a:Lcom/twitter/android/interestpicker/x;

    iput-object p1, v0, Lcom/twitter/android/interestpicker/x;->d:Lcmf;

    .line 272
    iget-object v0, p0, Lcom/twitter/android/interestpicker/af;->a:Lcom/twitter/android/interestpicker/x;

    invoke-static {v0}, Lcom/twitter/android/interestpicker/x;->a(Lcom/twitter/android/interestpicker/x;)V

    .line 273
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 268
    check-cast p1, Lcmf;

    invoke-virtual {p0, p1}, Lcom/twitter/android/interestpicker/af;->a(Lcmf;)V

    return-void
.end method
