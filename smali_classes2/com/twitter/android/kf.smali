.class Lcom/twitter/android/kf;
.super Lsr;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsr",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 522
    const-class v0, Lcom/twitter/android/ke;

    invoke-direct {p0, v0}, Lsr;-><init>(Ljava/lang/Class;)V

    .line 523
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/kf;->c(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/kf;->a(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
