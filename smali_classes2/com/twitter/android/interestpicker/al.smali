.class Lcom/twitter/android/interestpicker/al;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjk",
        "<",
        "Lcmf",
        "<",
        "Lcom/twitter/android/interestpicker/h;",
        ">;",
        "Lcmf",
        "<",
        "Lcom/twitter/android/interestpicker/h;",
        ">;",
        "Lcmf",
        "<",
        "Lcom/twitter/android/interestpicker/h;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/interestpicker/aj;


# direct methods
.method constructor <init>(Lcom/twitter/android/interestpicker/aj;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/twitter/android/interestpicker/al;->a:Lcom/twitter/android/interestpicker/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcmf;Lcmf;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmf",
            "<",
            "Lcom/twitter/android/interestpicker/h;",
            ">;",
            "Lcmf",
            "<",
            "Lcom/twitter/android/interestpicker/h;",
            ">;)",
            "Lcmf",
            "<",
            "Lcom/twitter/android/interestpicker/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1, p2}, Lcom/twitter/android/interestpicker/f;->a(Lcmf;Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, Lcmf;

    check-cast p2, Lcmf;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/interestpicker/al;->a(Lcmf;Lcmf;)Lcmf;

    move-result-object v0

    return-object v0
.end method
