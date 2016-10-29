.class Lcom/twitter/android/moments/data/bj;
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
        "Landroid/database/Cursor;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/data/bi;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/bi;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/twitter/android/moments/data/bj;->a:Lcom/twitter/android/moments/data/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/twitter/android/moments/data/bj;->a:Lcom/twitter/android/moments/data/bi;

    invoke-static {v0}, Lcom/twitter/android/moments/data/bi;->a(Lcom/twitter/android/moments/data/bi;)Lcmv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcmv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/bj;->a(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
