.class public Ltq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ltq;->a:Landroid/content/Context;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)Ltp;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ltp;

    iget-object v1, p0, Ltq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ltp;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    return-object v0
.end method
