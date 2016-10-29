.class Lcmi;
.super Lczm;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lczm",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcmf;


# direct methods
.method constructor <init>(Lcmf;II)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcmi;->a:Lcmf;

    invoke-direct {p0, p2, p3}, Lczm;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcmi;->a:Lcmf;

    invoke-virtual {v0, p1}, Lcmf;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
