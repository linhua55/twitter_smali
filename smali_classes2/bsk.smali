.class public Lbsk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/twitter/model/timeline/br;


# direct methods
.method public constructor <init>(ZIZZLcom/twitter/model/timeline/br;)V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-boolean p1, p0, Lbsk;->a:Z

    .line 327
    iput p2, p0, Lbsk;->b:I

    .line 328
    iput-boolean p3, p0, Lbsk;->c:Z

    .line 329
    iput-boolean p4, p0, Lbsk;->d:Z

    .line 330
    iput-object p5, p0, Lbsk;->e:Lcom/twitter/model/timeline/br;

    .line 331
    return-void
.end method
