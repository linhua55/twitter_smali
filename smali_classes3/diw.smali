.class Ldiw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Ldiv;


# direct methods
.method constructor <init>(Ldiv;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Ldiw;->a:Ldiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ldiw;->a:Ldiv;

    invoke-virtual {v0}, Ldiv;->c()V

    .line 77
    return-void
.end method
