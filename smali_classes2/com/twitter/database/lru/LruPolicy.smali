.class public Lcom/twitter/database/lru/LruPolicy;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/database/lru/LruPolicy$Type;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/twitter/database/lru/LruPolicy$Type;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/twitter/database/lru/LruPolicy;->a:Lcom/twitter/database/lru/LruPolicy$Type;

    .line 28
    iput p2, p0, Lcom/twitter/database/lru/LruPolicy;->b:I

    .line 29
    return-void
.end method
