.class Lcom/twitter/android/interestpicker/aa;
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
        "Lcom/twitter/android/interestpicker/aw;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/interestpicker/x;


# direct methods
.method constructor <init>(Lcom/twitter/android/interestpicker/x;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/twitter/android/interestpicker/aa;->a:Lcom/twitter/android/interestpicker/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/interestpicker/aw;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p1, Lcom/twitter/android/interestpicker/aw;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    check-cast p1, Lcom/twitter/android/interestpicker/aw;

    invoke-virtual {p0, p1}, Lcom/twitter/android/interestpicker/aa;->a(Lcom/twitter/android/interestpicker/aw;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
