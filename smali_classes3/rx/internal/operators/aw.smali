.class Lrx/internal/operators/aw;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field static final a:Lrx/internal/operators/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/au",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lrx/internal/operators/au;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->b()Ldjj;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/au;-><init>(Ldjj;)V

    sput-object v0, Lrx/internal/operators/aw;->a:Lrx/internal/operators/au;

    return-void
.end method
