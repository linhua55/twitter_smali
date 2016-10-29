.class public Lddf;
.super Lddd;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lddd",
        "<TT;>;",
        "Lcom/twitter/util/object/i",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/o",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lddd;-><init>(Lrx/o;)V

    .line 18
    iput-object p2, p0, Lddf;->a:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lddd;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lddf;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/twitter/util/object/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
