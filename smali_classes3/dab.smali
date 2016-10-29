.class final Ldab;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Ldab;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Ldab;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Ldab;->c:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v0, Ldac;

    invoke-direct {v0, p0}, Ldac;-><init>(Ldab;)V

    return-object v0
.end method
