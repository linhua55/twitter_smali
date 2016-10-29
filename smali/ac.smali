.class public final Lac;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lac;->a:J

    .line 55
    iput-object p3, p0, Lac;->b:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lac;->c:Ljava/lang/String;

    .line 57
    iput-wide p5, p0, Lac;->d:J

    .line 58
    iput p7, p0, Lac;->e:I

    .line 59
    return-void
.end method
