.class Ldea;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ldeb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lddz;


# direct methods
.method constructor <init>(Lddz;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Ldea;->a:Lddz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ldeb;Ldeb;)I
    .locals 4

    .prologue
    .line 211
    iget-wide v0, p1, Ldeb;->b:J

    iget-wide v2, p2, Ldeb;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 208
    check-cast p1, Ldeb;

    check-cast p2, Ldeb;

    invoke-virtual {p0, p1, p2}, Ldea;->a(Ldeb;Ldeb;)I

    move-result v0

    return v0
.end method
