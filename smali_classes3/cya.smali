.class Lcya;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcxy;


# direct methods
.method constructor <init>(Lcxy;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcya;->a:Lcxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcya;->a:Lcxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcxy;->a(I)V

    .line 346
    return-void
.end method
