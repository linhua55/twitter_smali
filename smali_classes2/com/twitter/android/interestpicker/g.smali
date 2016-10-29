.class final Lcom/twitter/android/interestpicker/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldjj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldjj",
        "<",
        "Lcom/twitter/android/interestpicker/h;",
        "Lcom/twitter/util/collection/ay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/interestpicker/h;)Lcom/twitter/util/collection/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/interestpicker/h;",
            ")",
            "Lcom/twitter/util/collection/ay",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1}, Lcom/twitter/android/interestpicker/f;->a(Lcom/twitter/android/interestpicker/h;)Lcom/twitter/util/collection/ay;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    check-cast p1, Lcom/twitter/android/interestpicker/h;

    invoke-virtual {p0, p1}, Lcom/twitter/android/interestpicker/g;->a(Lcom/twitter/android/interestpicker/h;)Lcom/twitter/util/collection/ay;

    move-result-object v0

    return-object v0
.end method
