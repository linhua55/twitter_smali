.class final Lcom/twitter/database/generated/ev;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbee;


# instance fields
.field private final a:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/twitter/database/generated/ev;->a:Landroid/database/Cursor;

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/twitter/database/generated/eu;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/twitter/database/generated/ev;-><init>(Landroid/database/Cursor;)V

    return-void
.end method
