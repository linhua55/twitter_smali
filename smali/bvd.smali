.class public Lbvd;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbvc;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbvf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lbvc;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lbvf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbvd;->a:Ljava/util/ArrayList;

    .line 15
    iput-object p2, p0, Lbvd;->b:Ljava/util/ArrayList;

    .line 16
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbvc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lbvd;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lbvf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lbvd;->b:Ljava/util/ArrayList;

    return-object v0
.end method
