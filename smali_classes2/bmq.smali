.class public Lbmq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lbmq;->a:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lbmq;->b:Lcom/twitter/library/client/Session;

    .line 103
    return-void
.end method


# virtual methods
.method public a(JLcom/twitter/model/av/o;)Lbmp;
    .locals 7

    .prologue
    .line 107
    new-instance v1, Lbmp;

    iget-object v2, p0, Lbmq;->a:Landroid/content/Context;

    iget-object v3, p0, Lbmq;->b:Lcom/twitter/library/client/Session;

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lbmp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;JLcom/twitter/model/av/o;)V

    return-object v1
.end method
