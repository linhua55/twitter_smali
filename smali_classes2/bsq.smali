.class Lbsq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lbsp;


# direct methods
.method constructor <init>(Lbsp;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lbsq;->a:Lbsp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lbsq;->a:Lbsp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbsp;->c:Z

    .line 120
    return-void
.end method
