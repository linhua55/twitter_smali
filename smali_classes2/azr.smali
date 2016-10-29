.class Lazr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldje;


# instance fields
.field final synthetic a:Lazq;


# direct methods
.method constructor <init>(Lazq;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lazr;->a:Lazq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lazr;->a:Lazq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lazq;->a(Lazq;Landroid/database/Cursor;)V

    .line 159
    return-void
.end method
