.class Ldas;
.super Lczl;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczl",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldar;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method constructor <init>(Ldar;)V
    .locals 1

    .prologue
    .line 217
    iput-object p1, p0, Ldas;->a:Ldar;

    invoke-direct {p0}, Lczl;-><init>()V

    .line 218
    iget-object v0, p0, Ldas;->a:Ldar;

    iget-object v0, v0, Ldar;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldas;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 229
    iget v0, p0, Ldas;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldas;->c:I

    .line 230
    iget-object v0, p0, Ldas;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Ldas;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ldas;->c:I

    iget-object v1, p0, Ldas;->a:Ldar;

    iget v1, v1, Ldar;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
