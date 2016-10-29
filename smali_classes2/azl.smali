.class Lazl;
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
.field final synthetic a:Lazk;


# direct methods
.method constructor <init>(Lazk;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lazl;->a:Lazk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcmf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lazl;->a:Lazk;

    invoke-virtual {v0, p1}, Lazk;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lazl;->a(Landroid/database/Cursor;)Lcmf;

    move-result-object v0

    return-object v0
.end method
