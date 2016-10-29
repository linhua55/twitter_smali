.class Lzs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcvw;

.field final synthetic b:Lzo;


# direct methods
.method constructor <init>(Lzo;Lcvw;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lzs;->b:Lzo;

    iput-object p2, p0, Lzs;->a:Lcvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lzs;->a:Lcvw;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lzs;->a:Lcvw;

    invoke-interface {v0}, Lcvw;->a()V

    .line 264
    :cond_0
    return-void
.end method
